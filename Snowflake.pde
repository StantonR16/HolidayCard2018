
class Snowflake {

  private float m_x, m_y, m_w, m_l;
  private int m_xBounds, m_yBounds;
  private float m_xDelta, m_yDelta;

  Snowflake() {
    m_xDelta = 1;
    m_yDelta = 1.33;
    m_xBounds = 800;
    m_yBounds = 800;

    randomPosition();
    randomSize();
  }

  void randomPosition() {
    m_x = random(m_xBounds);
    m_y = random(m_yBounds);
  }

  void randomSize() {
    m_w = random(3, 10);
    m_l = random(3, 10);
  }

  private static final int DELTA_LIM = 5;

  private float getXDeltaIncrement() {
    return random(0.05, 0.1);
  }

  private float getYDeltaIncrement() {
    return random(0.005, 0.1);
  }

  void move() {
    // Clamp position
    if (m_x >= m_xBounds)
      m_x  =0;
    if (m_y >= m_yBounds) 
      m_y = 0;

    if (frameCount % 60 == 0) {
      m_xDelta += getXDeltaIncrement(); 
      m_yDelta += getYDeltaIncrement();
    }

    // Clamp delta
    if (m_xDelta >= DELTA_LIM) m_xDelta = getXDeltaIncrement();
    if (m_yDelta >= DELTA_LIM) m_yDelta = getYDeltaIncrement();

    println("xd: " + m_xDelta + " dy: " + m_yDelta);
    m_x += m_xDelta;
    m_y += m_yDelta;
  }

  void show() {
    fill(255);
    ellipse(m_x, m_y, m_w, m_l);
  }
}
